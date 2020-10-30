# dockerized-notebook

This is a template for creating portable Jupyter notebooks.

Why? Well, one time I had to help someone at work get Python and Jupyter running on an old Windows machine and it was a nightmare. With this template, as long as they have Docker running, everything should work the same as it does on my computer.

## usage

1. Ensure Docker is running.
2. Open a terminal in the same folder as this README.
3. Run `docker-compose up`

You should see something like:

```
➜  dockerized-notebook git:(master) ✗ docker-compose up
Starting dockerized-notebook_jupyter_1 ... done
Attaching to dockerized-notebook_jupyter_1
jupyter_1  | Executing the command: jupyter notebook
jupyter_1  | [I 00:46:22.593 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.8/site-packages/jupyterlab
jupyter_1  | [I 00:46:22.593 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
jupyter_1  | [I 00:46:22.599 NotebookApp] Serving notebooks from local directory: /app
jupyter_1  | [I 00:46:22.599 NotebookApp] Jupyter Notebook 6.1.4 is running at:
jupyter_1  | [I 00:46:22.599 NotebookApp] http://67395e445d27:8888/?token=e0fcb9f4fd027d4d3388284d9c96ae2a5eb81693e798cc05
jupyter_1  | [I 00:46:22.599 NotebookApp]  or http://127.0.0.1:8888/?token=e0fcb9f4fd027d4d3388284d9c96ae2a5eb81693e798cc05
jupyter_1  | [I 00:46:22.599 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
jupyter_1  | [C 00:46:22.604 NotebookApp]
jupyter_1  |
jupyter_1  |     To access the notebook, open this file in a browser:
jupyter_1  |         file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
jupyter_1  |     Or copy and paste one of these URLs:
jupyter_1  |         http://67395e445d27:8888/?token=e0fcb9f4fd027d4d3388284d9c96ae2a5eb81693e798cc05
jupyter_1  |      or http://127.0.0.1:8888/?token=e0fcb9f4fd027d4d3388284d9c96ae2a5eb81693e798cc05
```

Copy and paste the last link (the one that starts http://127.0.0.1:8888`) into your browser. This should take you to Jupyter.

When you're finished, go back to the terminal and enter `CTRL-C` to shutdown Jupyter.

## adding dependencies

Add any extra Python packages in `./requirements.txt`.
