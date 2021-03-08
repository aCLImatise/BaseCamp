from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Planemo_Database_Delete_V0_1_0 = CommandToolBuilder(tool="planemo_database_delete", base_command=["planemo", "database_delete"], inputs=[ToolInput(tag="in_postgres", input_type=Boolean(optional=True), prefix="--postgres", doc=InputDocumentation(doc="Use postgres database type.")), ToolInput(tag="in_database_type", input_type=Boolean(optional=True), prefix="--database_type", doc=InputDocumentation(doc="[postgres|postgres_docker|sqlite|auto]\nType of database to use for profile -\n'auto', 'sqlite', 'postgres', and\n'postgres_docker' are available options. Use\npostgres to use an existing postgres server\nyou user can access without a password via\nthe psql command. Use postgres_docker to\nhave Planemo manage a docker container\nrunning postgres. Data with postgres_docker\nis not yet persisted past when you restart\nthe docker container launched by Planemo so\nbe careful with this option.")), ToolInput(tag="in_postgres_psql_path", input_type=File(optional=True), prefix="--postgres_psql_path", doc=InputDocumentation(doc="Name or or path to postgres client binary\n(psql).")), ToolInput(tag="in_postgres_database_user", input_type=String(optional=True), prefix="--postgres_database_user", doc=InputDocumentation(doc="Postgres username for managed development")), ToolInput(tag="in_no_docker_sudo", input_type=Boolean(optional=True), prefix="--no_docker_sudo", doc=InputDocumentation(doc="Flag to use sudo when running docker.")), ToolInput(tag="in_docker_host", input_type=String(optional=True), prefix="--docker_host", doc=InputDocumentation(doc="Docker host to target when executing docker\ncommands (defaults to localhost).")), ToolInput(tag="in_docker_sudo_cmd", input_type=String(optional=True), prefix="--docker_sudo_cmd", doc=InputDocumentation(doc="sudo command to use when --docker_sudo is\nenabled (defaults to sudo).")), ToolInput(tag="in_local", input_type=String(), position=0, doc=InputDocumentation(doc="all   all                    trust"))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Database_Delete_V0_1_0().translate("wdl")

