from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Mercat_V0_1_0 = CommandToolBuilder(tool="mercat", base_command=["mercat"], inputs=[ToolInput(tag="in_pathtoinputfile", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="path-to-input-file")), ToolInput(tag="in_pathtofoldercontaininginputfiles", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="path-to-folder-containing-input-files")), ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="kmer length")), ToolInput(tag="in_no_of_cores", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="no of cores [default = all]")), ToolInput(tag="in_minimum_kmer_count", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="minimum kmer count [default = 10]")), ToolInput(tag="in_pro", input_type=Boolean(optional=True), prefix="-pro", doc=InputDocumentation(doc="protein input file")), ToolInput(tag="in_fastq_input_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="fastQ input file")), ToolInput(tag="in_run_prodigal_fasta", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="run prodigal on fasta file")), ToolInput(tag="in__trimmomatic_options", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[T]      Trimmomatic options")), ToolInput(tag="in_split_mb_files", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[S]      Split into x MB files. Default = 100MB")), ToolInput(tag="in_var_10", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mercat_V0_1_0().translate("wdl", allow_empty_container=True)

