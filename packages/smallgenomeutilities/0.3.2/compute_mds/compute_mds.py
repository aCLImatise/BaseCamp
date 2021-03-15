from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float

Compute_Mds_V0_1_0 = CommandToolBuilder(tool="compute_mds", base_command=["compute_mds"], inputs=[ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="Starting position of the region of interest, 0-based\nindexing (default: 2252)")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="Ending position of the region of interest, 0-based\nindexing. Note a half-open interval is used, i.e,\n[start:end) (default: 2549)")), ToolInput(tag="in_fasta_file_containing", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="FASTA file containing msa for true haplotypes\n(default: None)")), ToolInput(tag="in_th_rd", input_type=Float(optional=True), prefix="--thrd", doc=InputDocumentation(doc="Threshold on the haplotype frequency (default: 0.02)")), ToolInput(tag="in_sim", input_type=Float(optional=True), prefix="--sim", doc=InputDocumentation(doc="Threshold on the similarity between true haplotypes\nand reconstructed haplotypes (default: 0.9)")), ToolInput(tag="in_plot_out_name", input_type=File(optional=True), prefix="--plot_outname", doc=InputDocumentation(doc="File name for the output plot (default: mds_plot.pdf)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="File name for the output file containing mapping from\nreconstructed haplotypes to true haplotypes (default:\nmapping.tsv)")), ToolInput(tag="in_file_name_prefix", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="File name prefix for reconstructed haplotypes\n(default: None)\n"))], outputs=[ToolOutput(tag="out_plot_out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_plot_out_name", type_hint=File()), doc=OutputDocumentation(doc="File name for the output plot (default: mds_plot.pdf)")), ToolOutput(tag="out_out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_name", type_hint=File()), doc=OutputDocumentation(doc="File name for the output file containing mapping from\nreconstructed haplotypes to true haplotypes (default:\nmapping.tsv)"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Mds_V0_1_0().translate("wdl")

