from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Clinvar_Tsv_Parse_Xml_V0_1_0 = CommandToolBuilder(tool="clinvar_tsv_parse_xml", base_command=["clinvar_tsv", "parse_xml"], inputs=[ToolInput(tag="in_output_multi", input_type=Int(optional=True), prefix="--output-multi", doc=InputDocumentation(doc="[--max-rows MAX_ROWS]")), ToolInput(tag="in_clin_var_xml", input_type=File(optional=True), prefix="--clinvar-xml", doc=InputDocumentation(doc="Path to Clinvar XML file.")), ToolInput(tag="in_genome_build", input_type=String(optional=True), prefix="--genome-build", doc=InputDocumentation(doc="The genome build this variant is for.")), ToolInput(tag="in_output_single", input_type=File(optional=True), prefix="--output-single", doc=InputDocumentation(doc="Output path for single TSV file.")), ToolInput(tag="in_max_rows", input_type=Int(optional=True), prefix="--max-rows", doc=InputDocumentation(doc="Maximal number of rows to write out; for debugging.")), ToolInput(tag="in_clin_var_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parse_xml", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_single", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_single", type_hint=File()), doc=OutputDocumentation(doc="Output path for single TSV file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clinvar_Tsv_Parse_Xml_V0_1_0().translate("wdl", allow_empty_container=True)

