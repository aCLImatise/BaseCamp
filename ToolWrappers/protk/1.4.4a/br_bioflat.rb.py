from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Br_Bioflat_Rb_V0_1_0 = CommandToolBuilder(tool="br_bioflat.rb", base_command=["br_bioflat.rb"], inputs=[ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="set serch namespace to NAME")), ToolInput(tag="in_primary", input_type=String(optional=True), prefix="--primary", doc=InputDocumentation(doc="set primary namespece to UNIQUE\nDefault primary/secondary namespaces depend on\neach format of flatfiles.")), ToolInput(tag="in_secondary", input_type=String(optional=True), prefix="--secondary", doc=InputDocumentation(doc="set secondary namespaces.\nYou may use this option many times to specify\nmore than one namespace.")), ToolInput(tag="in_add_secondary", input_type=String(optional=True), prefix="--add-secondary", doc=InputDocumentation(doc="add secondary namespaces to default specification.\nYou can use this option many times.")), ToolInput(tag="in_env", input_type=Boolean(optional=True), prefix="--env", doc=InputDocumentation(doc="=/path/to/env     use env program to run sort (default: /usr/bin/env)")), ToolInput(tag="in_env_arg", input_type=String(optional=True), prefix="--env-arg", doc=InputDocumentation(doc="argument given to the env program (default: LC_ALL=C)\n(multiple --env-arg=XXXXXX can be specified)")), ToolInput(tag="in_renew", input_type=Boolean(optional=True), prefix="--renew", doc=InputDocumentation(doc="re-read all flatfiles and update whole index")), ToolInput(tag="in_make_index", input_type=String(optional=True), prefix="--makeindex", doc=InputDocumentation(doc="/DBNAME\nsame as --create --type flat --location DIR --dbname DBNAME")), ToolInput(tag="in_make_index_bdb", input_type=String(optional=True), prefix="--makeindexBDB", doc=InputDocumentation(doc="/DBNAME\nsame as --create --type bdb  --location DIR --dbname DBNAME")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="instead of genbank|embl|fasta, specifing a class name is allowed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Br_Bioflat_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

