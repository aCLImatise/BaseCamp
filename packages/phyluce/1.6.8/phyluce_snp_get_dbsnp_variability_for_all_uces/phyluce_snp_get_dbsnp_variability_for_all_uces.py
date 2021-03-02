from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Phyluce_Snp_Get_Dbsnp_Variability_For_All_Uces_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_get_dbsnp_variability_for_all_uces", base_command=["phyluce_snp_get_dbsnp_variability_for_all_uces"], inputs=[ToolInput(tag="in_dbsnp", input_type=String(optional=True), prefix="--dbsnp", doc=InputDocumentation(doc="CSV input from dbSNP giving SNP positions within UCE")), ToolInput(tag="in_xml", input_type=File(optional=True), prefix="--xml", doc=InputDocumentation(doc="The XML file holiding locus data from dbSNP")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file")), ToolInput(tag="in_dupe_file", input_type=File(optional=True), prefix="--dupefile", doc=InputDocumentation(doc="The path to a lastz file of lastz-against-self results"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Get_Dbsnp_Variability_For_All_Uces_V0_1_0().translate("wdl", allow_empty_container=True)

