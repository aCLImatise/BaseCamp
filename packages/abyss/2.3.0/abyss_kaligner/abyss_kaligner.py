from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Abyss_Kaligner_V0_1_0 = CommandToolBuilder(tool="abyss_kaligner", base_command=["abyss-kaligner"], inputs=[ToolInput(tag="in_kmer_size_alignment", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="k-mer size and minimum alignment length")), ToolInput(tag="in_section", input_type=Int(optional=True), prefix="--section", doc=InputDocumentation(doc="/N     split the target into N sections and align\nreads to section S [1/1]")), ToolInput(tag="in_ignore_multimap", input_type=String(optional=True), prefix="--ignore-multimap", doc=InputDocumentation(doc="duplicate k-mer in the target\n[default]")), ToolInput(tag="in_multimap", input_type=Boolean(optional=True), prefix="--multimap", doc=InputDocumentation(doc="allow duplicate k-mer in the target")), ToolInput(tag="in_no_multimap", input_type=Boolean(optional=True), prefix="--no-multimap", doc=InputDocumentation(doc="disallow duplicate k-mer in the target")), ToolInput(tag="in_threads", input_type=File(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N threads [2] up to one per query file\nor if N is 0 use one thread per query file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_no_sam", input_type=Boolean(optional=True), prefix="--no-sam", doc=InputDocumentation(doc="output the results in KAligner format")), ToolInput(tag="in_sam", input_type=Boolean(optional=True), prefix="--sam", doc=InputDocumentation(doc="output the results in SAM format")), ToolInput(tag="in_seq", input_type=Boolean(optional=True), prefix="--seq", doc=InputDocumentation(doc="print the sequence with the alignments")), ToolInput(tag="in_k_aligner", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_11", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Kaligner_V0_1_0().translate("wdl")

