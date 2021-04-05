from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Agat_Convert_Embl2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_embl2gff.pl", base_command=["agat_convert_embl2gff.pl"], inputs=[ToolInput(tag="in_embl", input_type=Boolean(optional=True), prefix="--embl", doc=InputDocumentation(doc="Input EMBL file that will be read")), ToolInput(tag="in_primary_tag", input_type=Boolean(optional=True), prefix="--primary_tag", doc=InputDocumentation(doc="List of 'primary tag'. Useful to discard or keep specific\nfeatures. Multiple tags must be coma-separated.")), ToolInput(tag="in_means_tags_discarded", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Means that primary tags provided by the option 'primary_tag'\nwill be discarded.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_gaas_converter_embl_two_gff_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_format_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Usage:\ngaas_converter_embl2gff.pl --embl infile.embl [ -o outfile ]"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Embl2Gff_Pl_V0_1_0().translate("wdl")

