from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Get_Record_Py_V0_1_0 = CommandToolBuilder(tool="get_record.py", base_command=["get_record.py"], inputs=[ToolInput(tag="in_input_record_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input a RECORD FILE")), ToolInput(tag="in_input_file_id", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="input a LIST FILE, one RECORD ID per line")), ToolInput(tag="in_output_subrecord_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output to SUBRECORD FILE")), ToolInput(tag="in_type_record_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="TYPE    RECORD FILE TYPE [table|fasta|fastq|hmm][default: table]")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="[get|remove] RECORD [default: get]")), ToolInput(tag="in_table_record_column", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="if a table RECORD, the column NUM of RECORD ID[default: 1]")), ToolInput(tag="in_table_record_retain", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="if a table RECORD, retain the row NUM as header [default: 1]")), ToolInput(tag="in_table_record_seperation", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="if a table RECORD, seperation [default: '\t']")), ToolInput(tag="in_remove_duplicates_get", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="remove duplicates when get table records"))], outputs=[ToolOutput(tag="out_output_subrecord_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_subrecord_file", type_hint=File()), doc=OutputDocumentation(doc="output to SUBRECORD FILE"))], container="quay.io/biocontainers/tesorter:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Record_Py_V0_1_0().translate("wdl")

