from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, File, Directory, Int

Groot_Align_V0_1_0 = CommandToolBuilder(tool="groot_align", base_command=["groot", "align"], inputs=[ToolInput(tag="in_cont_thresh", input_type=Float(optional=True), prefix="--contThresh", doc=InputDocumentation(doc="containment threshold for the LSH ensemble (default 0.99)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="if set, the input will be treated as fasta sequence(s) (experimental feature)")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="FASTQ file(s) to align")), ToolInput(tag="in_graph_dir", input_type=Directory(optional=True), prefix="--graphDir", doc=InputDocumentation(doc="directory to save variation graphs to (default './groot-graphs-20200909213621')")), ToolInput(tag="in_mink_merco_v", input_type=Float(optional=True), prefix="--minKmerCov", doc=InputDocumentation(doc="minimum number of k-mers covering each base of a graph segment (default 1)")), ToolInput(tag="in_no_align", input_type=Boolean(optional=True), prefix="--noAlign", doc=InputDocumentation(doc="if set, no exact alignment will be performed - graphs will be weighted using approximate read mappings")), ToolInput(tag="in_index_dir", input_type=Directory(optional=True), prefix="--indexDir", doc=InputDocumentation(doc="directory for to write/read the GROOT index files")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="filename for log file (default 'groot.log')")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="number of processors to use (default 1)")), ToolInput(tag="in_profiling", input_type=Boolean(optional=True), prefix="--profiling", doc=InputDocumentation(doc="create the files needed to profile GROOT using the go tool pprof"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Groot_Align_V0_1_0().translate("wdl", allow_empty_container=True)

