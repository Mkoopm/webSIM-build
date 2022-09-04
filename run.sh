#!/bin/bash
nginx -t &&
service nginx start &&
cd plot-SIMsalabim &&
streamlit run app.py
