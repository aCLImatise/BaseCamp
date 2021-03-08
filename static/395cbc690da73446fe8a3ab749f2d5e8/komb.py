from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File, Boolean

Komb_V0_1_0 = CommandToolBuilder(tool="komb", base_command=["komb"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory [Default: output_yyyymmdd_hhmmss]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of Threads [Default: Max]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="Kmer size for Abyss, Bifrost uses 31 [Default: 31]")), ToolInput(tag="in_num_hits", input_type=Int(optional=True), prefix="--numhits", doc=InputDocumentation(doc="Bowtie2 maximum number of hits [Default: 1000]")), ToolInput(tag="in_read_len", input_type=Int(optional=True), prefix="--readlen", doc=InputDocumentation(doc="Read Length (can be average) [Default: 100]")), ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="(required)  Paired-read file separated by ',' [Default: read1.fq\n,read2.fq]")), ToolInput(tag="in_alignment", input_type=Boolean(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Keep alignment files [Default: delete alignment]")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Reads provided are fasta files [Default: fastq]")), ToolInput(tag="in_bifrost", input_type=Boolean(optional=True), prefix="--bifrost", doc=InputDocumentation(doc="Run bifrost instead of abyss [Default: run abyss]")), ToolInput(tag="in_spades", input_type=Boolean(optional=True), prefix="--spades", doc=InputDocumentation(doc="Runs spades and uses GFA graph instead of bifrost + bowtie2 [Default:\nrun abyss]"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory [Default: output_yyyymmdd_hhmmss]"))], container="quay.io/biocontainers/komb:1.0--py36h5202f60_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Komb_V0_1_0().translate("wdl")

