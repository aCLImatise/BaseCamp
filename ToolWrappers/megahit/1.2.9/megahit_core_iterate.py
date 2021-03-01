from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float

Megahit_Core_Iterate_V0_1_0 = CommandToolBuilder(tool="megahit_core_iterate", base_command=["megahit_core", "iterate"], inputs=[ToolInput(tag="in_contig_file", input_type=File(optional=True), prefix="--contig_file", doc=InputDocumentation(doc="(*) contigs file, fasta/fastq format, output by assembler")), ToolInput(tag="in_bubble_file", input_type=File(optional=True), prefix="--bubble_file", doc=InputDocumentation(doc="(*) bubble file, fasta/fastq format, output by assembler")), ToolInput(tag="in_read_file", input_type=String(optional=True), prefix="--read_file", doc=InputDocumentation(doc="(*) reads to be aligned. '-' for stdin. Can be gzip'ed.")), ToolInput(tag="in_num_cpu_threads", input_type=Int(optional=True), prefix="--num_cpu_threads", doc=InputDocumentation(doc="(=0)         number of cpu threads, at least 2. 0 for auto detect.")), ToolInput(tag="in_km_er_k", input_type=Int(optional=True), prefix="--kmer_k", doc=InputDocumentation(doc="(=0)                  (*) current kmer size.")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="(=0)                    (*) step for iteration (<= 28). i.e. this iteration is from kmer_k to (kmer_k + step)")), ToolInput(tag="in_output_prefix", input_type=Float(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="(*) output_prefix.edges.0 will be created.")), ToolInput(tag="in_iterate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_opt", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_contig_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_contig_file", type_hint=File()), doc=OutputDocumentation(doc="(*) contigs file, fasta/fastq format, output by assembler")), ToolOutput(tag="out_bubble_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bubble_file", type_hint=File()), doc=OutputDocumentation(doc="(*) bubble file, fasta/fastq format, output by assembler"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Core_Iterate_V0_1_0().translate("wdl", allow_empty_container=True)

