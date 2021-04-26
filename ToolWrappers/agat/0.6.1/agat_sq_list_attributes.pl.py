from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sq_List_Attributes_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_list_attributes.pl", base_command=["agat_sq_list_attributes.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_primary_tag_option", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="primary tag option, case insensitive, list. Allow to specied the\nfeature types that will be handled. You can specified a specific\nfeature by given its primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\ndefault all feature are taking in account. fill the option by\nthe value 'all' will have the same behaviour.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sq_list_attributes_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_List_Attributes_Pl_V0_1_0().translate("wdl")

