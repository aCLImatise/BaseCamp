from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Anvi_Export_Table_V0_1_0 = CommandToolBuilder(tool="anvi_export_table", base_command=["anvi-export-table"], inputs=[ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="Table name to export.")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="Gives a list of tables in a database and quits. If a\ntable is already declared this time it lists all the\nfields in a given table, in case you would to export\nonly a specific list of fields from the table using\n--fields parameter.")), ToolInput(tag="in_s__fields", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="(S), --fields FIELD(S)\nFields to report. Use --list-tables parameter with a\ntable name to see available fields You can list fields\nusing this notation: --fields 'field_1, field_2, ...\nfield_N'.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_Table_V0_1_0().translate("wdl", allow_empty_container=True)

