# Slim version of Python
FROM python:3.10-slim-bullseye

# Download Package Information
RUN apt-get update -y
# Install Tkinter
RUN apt-get install tk git fpc -y
RUN git clone https://github.com/Mkoopm/plot-SIMsalabim.git

# install the streamlit app
WORKDIR plot-SIMsalabim
RUN git clone https://github.com/kostergroup/SIMsalabim.git

# install compile SIMsalabim and save default parameters to revert to
WORKDIR SIMsalabim/SimSS
RUN fpc simss.pas
RUN cp device_parameters.txt device_parameters_backup.txt

# install requirements for the strealit app
WORKDIR ../..
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

RUN chmod a+x run.sh

# Commands to run the streamlit application
CMD ["./run.sh"]
