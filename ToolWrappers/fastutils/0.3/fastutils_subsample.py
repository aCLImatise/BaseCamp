from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastutils_Subsample_V0_1_0 = CommandToolBuilder(tool="fastutils_subsample", base_command=["fastutils", "subsample"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="input file in fasta/q format. This options is required if -r or -l are used [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file [stdout]")), ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="--depth", doc=InputDocumentation(doc="coverage of the subsampled set [required]")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genomeSize", doc=InputDocumentation(doc="length of the genome. Accepted suffixes are k,m,g [required]")), ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="--random", doc=InputDocumentation(doc="subsample randomly instead of selecting top reads")), ToolInput(tag="in_longest", input_type=Boolean(optional=True), prefix="--longest", doc=InputDocumentation(doc="subsample longest reads instead of selecting top reads")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="seed for random number generator")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="output reads in fastq format if possible")), ToolInput(tag="in_comment", input_type=Boolean(optional=True), prefix="--comment", doc=InputDocumentation(doc="print comments in headers")), ToolInput(tag="in_num", input_type=Boolean(optional=True), prefix="--num", doc=InputDocumentation(doc="use read index instead of read name")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep name as a comment when using -n")), ToolInput(tag="in_fof_n", input_type=Boolean(optional=True), prefix="--fofn", doc=InputDocumentation(doc="input file is a file of file names"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastutils_Subsample_V0_1_0().translate("wdl", allow_empty_container=True)

