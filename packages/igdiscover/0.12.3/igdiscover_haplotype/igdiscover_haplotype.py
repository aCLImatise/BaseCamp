from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float

Igdiscover_Haplotype_V0_1_0 = CommandToolBuilder(tool="igdiscover_haplotype", base_command=["igdiscover", "haplotype"], inputs=[ToolInput(tag="in_v_gene", input_type=String(optional=True), prefix="--v-gene", doc=InputDocumentation(doc="V gene to use for haplotyping J. Default: Auto-")), ToolInput(tag="in_restrict", input_type=File(optional=True), prefix="--restrict", doc=InputDocumentation(doc="Restrict analysis to the genes named in the FASTA\nfile. Only the sequence names are used!")), ToolInput(tag="in_order", input_type=File(optional=True), prefix="--order", doc=InputDocumentation(doc="Sort the output according to the order of the records\nin the given FASTA file.")), ToolInput(tag="in_plot", input_type=File(optional=True), prefix="--plot", doc=InputDocumentation(doc="Write a haplotype plot to FILE")), ToolInput(tag="in_structure_plot", input_type=File(optional=True), prefix="--structure-plot", doc=InputDocumentation(doc="Write a haplotype structure plot (counts binarized 0\nand 1) to FILE\n")), ToolInput(tag="in_d_evalue", input_type=String(optional=True), prefix="--d-evalue", doc=InputDocumentation(doc="")), ToolInput(tag="in_detected", input_type=String(), position=0, doc=InputDocumentation(doc="--d-evalue D_EVALUE   Maximal allowed E-value for D gene match. Default:")), ToolInput(tag="in_zero_dot_zero_zero_zero_one", input_type=Float(), position=1, doc=InputDocumentation(doc="--d-coverage D_COVERAGE, --D-coverage D_COVERAGE"))], outputs=[ToolOutput(tag="out_order", output_type=File(optional=True), selector=InputSelector(input_to_select="in_order", type_hint=File()), doc=OutputDocumentation(doc="Sort the output according to the order of the records\nin the given FASTA file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Haplotype_V0_1_0().translate("wdl", allow_empty_container=True)

