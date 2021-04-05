from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sp_Manage_Utrs_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_manage_UTRs.pl", base_command=["agat_sp_manage_UTRs.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="--reffile", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="Threshold of exon's number of the UTR. Over or equal to this\nthreshold, the UTR will be discarded. Default value is 5.")), ToolInput(tag="in_tree_prime_utr", input_type=Int(optional=True), prefix="--tree_prime_utr", doc=InputDocumentation(doc="The threshold of the option <n> will be applied on the 3'UTR.")), ToolInput(tag="in_five_prime_utr", input_type=Int(optional=True), prefix="--five_prime_utr", doc=InputDocumentation(doc="The threshold of the option <n> will be applied on the 5'UTR.")), ToolInput(tag="in_both", input_type=Int(optional=True), prefix="--both", doc=InputDocumentation(doc="The threshold of the option <n> will be applied on genes where\nthe number of UTR exon (3' and 5' additioned) is over it.")), ToolInput(tag="in_plot", input_type=String(optional=True), prefix="--plot", doc=InputDocumentation(doc="Allows to create an histogram in pdf of UTR sizes distribution.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the gene incriminated will be write.")), ToolInput(tag="in_agat_sp_manage_utrs_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the gene incriminated will be write."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Manage_Utrs_Pl_V0_1_0().translate("wdl")

