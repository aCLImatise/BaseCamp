from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Arb_Name_Server_V0_1_0 = CommandToolBuilder(tool="arb_name_server", base_command=["arb_name_server"], inputs=[ToolInput(tag="in_name_sets_species_name", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<name>        sets species name to '<name>'")), ToolInput(tag="in_name_sets_extended_name", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="<name>        sets extended name to '<name>'")), ToolInput(tag="in_ali_sets_alignment", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="<ali>         sets alignment to '<ali>'")), ToolInput(tag="in_file_sets_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<file>        sets default file to '<file>'")), ToolInput(tag="in_fielddef_sets_db", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<field>=<def> sets DB field to '<field>' (using <def> as default)")), ToolInput(tag="in_readonly_mode", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="read-only mode")), ToolInput(tag="in_server_sets_dbserver", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="<server>      sets DB-server to '<server>'  [default = ':']")), ToolInput(tag="in_server_sets_jobserver", input_type=Boolean(optional=True), prefix="-J", doc=InputDocumentation(doc="<server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']")), ToolInput(tag="in_server_sets_mgrserver", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="<server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']")), ToolInput(tag="in_server_sets_ptserver", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="<server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']")), ToolInput(tag="in_port", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="<[host]:port>   sets TCP connection to '<[host]:port>'")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_server_parameters", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Name_Server_V0_1_0().translate("wdl", allow_empty_container=True)

