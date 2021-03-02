from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Swissprot_To_Table_Rb_V0_1_0 = CommandToolBuilder(tool="swissprot_to_table.rb", base_command=["swissprot_to_table.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Run in debug mode [false]")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Uniprot flatfile database containing full records for proteins")), ToolInput(tag="in_keys", input_type=String(optional=True), prefix="--keys", doc=InputDocumentation(doc="Filter output to only the specified keys (comma separated)")), ToolInput(tag="in_show_keys", input_type=Boolean(optional=True), prefix="--show-keys", doc=InputDocumentation(doc="Print a list of possible values for the keys field and exit [false]")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="Separator character for output, default (tab) [    ]")), ToolInput(tag="in_array_separator", input_type=String(optional=True), prefix="--array-separator", doc=InputDocumentation(doc="Array Separator character, default , [,]")), ToolInput(tag="in_query_separator", input_type=String(optional=True), prefix="--query-separator", doc=InputDocumentation(doc="Separator character for queries.txt, default is tab [      ]")), ToolInput(tag="in_id_column", input_type=Int(optional=True), prefix="--id-column", doc=InputDocumentation(doc="Column in queries.txt in which Uniprot Accessions are found [1]")), ToolInput(tag="in_queries_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swissprot_To_Table_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

