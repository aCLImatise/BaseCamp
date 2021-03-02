from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File, String, Array, Float

Haslr_Py_V0_1_0 = CommandToolBuilder(tool="haslr.py", base_command=["haslr.py"], inputs=[ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="estimated genome size; accepted suffixes are k,m,g")), ToolInput(tag="in_long", input_type=File(optional=True), prefix="--long", doc=InputDocumentation(doc="long read file")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="type of long reads chosen from {pacbio,nanopore}")), ToolInput(tag="in_short", input_type=Array(t=String(), optional=True), prefix="--short", doc=InputDocumentation(doc="short read file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of CPU threads to use [1]")), ToolInput(tag="in_cov_lr", input_type=Int(optional=True), prefix="--cov-lr", doc=InputDocumentation(doc="amount of long read coverage to use for assembly [25]")), ToolInput(tag="in_aln_block", input_type=Int(optional=True), prefix="--aln-block", doc=InputDocumentation(doc="minimum length of alignment block [500]")), ToolInput(tag="in_aln_sim", input_type=Float(optional=True), prefix="--aln-sim", doc=InputDocumentation(doc="minimum alignment similarity [0.85]")), ToolInput(tag="in_edge_sup", input_type=Int(optional=True), prefix="--edge-sup", doc=InputDocumentation(doc="minimum number of long read supporting each edge [3]")), ToolInput(tag="in_mini_a_km_er", input_type=Int(optional=True), prefix="--minia-kmer", doc=InputDocumentation(doc="kmer size used by minia [49]")), ToolInput(tag="in_mini_a_solid", input_type=Int(optional=True), prefix="--minia-solid", doc=InputDocumentation(doc="minimum kmer abundance used by minia [3]")), ToolInput(tag="in_mini_a_asm", input_type=String(optional=True), prefix="--minia-asm", doc=InputDocumentation(doc="type of minia assembly chosen from {contigs,unitigs} [contigs]"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haslr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

