from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float, Boolean

Rcorrector_V0_1_0 = CommandToolBuilder(tool="rcorrector", base_command=["rcorrector"], inputs=[ToolInput(tag="in_seqfile_path_sequence", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc=": seq_file is the path to the sequence file. Can use multiple -r to specifiy multiple sequence files")), ToolInput(tag="in_seqfileright_paths_use", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="seq_file_right: the paths to the paired-end data set. Can use multiple -p to specifiy multiple sequence files")), ToolInput(tag="in_seqfile_path_interleaved", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=": seq_file is the path to the interleaved mate-pair sequence file. Can use multiple -i")), ToolInput(tag="in_kmer_counts_dumped", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": the kmer counts dumped by JellyFish")), ToolInput(tag="in_threads_use_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="of threads to use (default: 1)")), ToolInput(tag="in_max_cor", input_type=Int(optional=True), prefix="-maxcor", doc=InputDocumentation(doc=": the maximum number of correction every 100bp (default: 8)")), ToolInput(tag="in_max_cork", input_type=Int(optional=True), prefix="-maxcorK", doc=InputDocumentation(doc=": the maximum number of correction within k-bp window (default: 4)")), ToolInput(tag="in_wk", input_type=Float(optional=True), prefix="-wk", doc=InputDocumentation(doc=": the proportion of kmers that are used to estimate weak kmer count threshold (default: 0.95)")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="-stdout", doc=InputDocumentation(doc=": output the corrected sequences to stdout (default: not used)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc=": output some correction information to stdout (default: not used)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rcorrector_V0_1_0().translate("wdl", allow_empty_container=True)

