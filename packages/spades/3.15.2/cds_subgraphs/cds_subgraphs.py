from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int

Cds_Subgraphs_V0_1_0 = CommandToolBuilder(tool="cds_subgraphs", base_command=["cds-subgraphs"], inputs=[ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output-folder", doc=InputDocumentation(doc="output folder to use for GFA files")), ToolInput(tag="in_part_desc", input_type=File(optional=True), prefix="--part-desc", doc=InputDocumentation(doc="file with partial genes description (.gff)")), ToolInput(tag="in_part_seq", input_type=File(optional=True), prefix="--part-seq", doc=InputDocumentation(doc="file with partial genes sequences (.fasta)")), ToolInput(tag="in_graph", input_type=String(optional=True), prefix="--graph", doc=InputDocumentation(doc="In GFA (ending with .gfa) or prefix to SPAdes graph pack")), ToolInput(tag="in_cds_len_est", input_type=File(optional=True), prefix="--cds-len-est", doc=InputDocumentation(doc="file with cds length estimamtes")), ToolInput(tag="in_kmer_length_use", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length to use")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use (default: max_threads / 2)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="scratch directory to use (default: <outdir>/tmp)\n"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="output folder to use for GFA files"))], container="quay.io/biocontainers/spades:3.15.2--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cds_Subgraphs_V0_1_0().translate("wdl")

