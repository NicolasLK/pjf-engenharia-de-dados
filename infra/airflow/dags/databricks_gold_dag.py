from pendulum import datetime
from airflow import DAG
from airflow.decorators import dag, task
from airflow.providers.databricks.operators.databricks import DatabricksRunNowOperator

DATABRICKS_CONN_ID = 'databricks_default'

with DAG(
    "databricks_gold_to_dimensional_dag",
) as dag:
    operation_run_now = DatabricksRunNowOperator(
        task_id="run_now",
        databricks_conn_id="databricks_default",
        job_id = 773676640190102
    )
