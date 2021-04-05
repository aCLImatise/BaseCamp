from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Agat_Sp_Filter_Gene_By_Length_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_gene_by_length.pl", base_command=["agat_sp_filter_gene_by_length.pl"], inputs=[ToolInput(tag="in_select_genes_longer", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Select genes longer than 200bp:")), ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="--reffile", doc=InputDocumentation(doc="Input GFF3 file that will be read")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Integer - Gene size in pb [Default 100]")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="--test", doc=InputDocumentation(doc="Test to apply (>, <, =, >= or <=). If you use one of these two\ncharacters >, <, please do not forget to quote your parameter\nlike that '<='. Else your terminal will complain. [Default '=']")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_verbose_option_debugging", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option for debugging purpose.")), ToolInput(tag="in_agat_sp_filter_gene_by_length_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_Gene_By_Length_Pl_V0_1_0().translate("wdl")

