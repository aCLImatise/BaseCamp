from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Bak_Log_V0_1_0 = CommandToolBuilder(tool="nextflow.bak_log", base_command=["nextflow.bak", "log"], inputs=[ToolInput(tag="in_after", input_type=Boolean(optional=True), prefix="-after", doc=InputDocumentation(doc="Show log entries for runs executed after the specified one")), ToolInput(tag="in_before", input_type=Boolean(optional=True), prefix="-before", doc=InputDocumentation(doc="Show log entries for runs executed before the specified one")), ToolInput(tag="in_but", input_type=Boolean(optional=True), prefix="-but", doc=InputDocumentation(doc="Show log entries of all runs except the specified one")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc="Comma separated list of fields to include in the printed log -- Use the\n`-l` option to show the list of available fields")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="-filter", doc=InputDocumentation(doc="Filter log entries by a custom expression e.g. process =~ /foo.*/ &&\nstatus == 'COMPLETED'")), ToolInput(tag="in_list_fields", input_type=Boolean(optional=True), prefix="-list-fields", doc=InputDocumentation(doc="Show all available fields\nDefault: false")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="Show only run names\nDefault: false")), ToolInput(tag="in_character_used_valuesdefault", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Character used to separate column values\nDefault:")), ToolInput(tag="in_template", input_type=Boolean(optional=True), prefix="-template", doc=InputDocumentation(doc="Text template used to each record in the log\n")), ToolInput(tag="in_log", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Bak_Log_V0_1_0().translate("wdl", allow_empty_container=True)

