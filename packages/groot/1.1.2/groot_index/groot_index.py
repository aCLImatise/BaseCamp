from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, Boolean

Groot_Index_V0_1_0 = CommandToolBuilder(tool="groot_index", base_command=["groot", "index"], inputs=[ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmerSize", doc=InputDocumentation(doc="size of k-mer (default 31)")), ToolInput(tag="in_max_k", input_type=Int(optional=True), prefix="--maxK", doc=InputDocumentation(doc="maxK in the LSH Ensemble (default 4)")), ToolInput(tag="in_max_sketch_span", input_type=Int(optional=True), prefix="--maxSketchSpan", doc=InputDocumentation(doc="max number of identical neighbouring sketches permitted in any graph traversal (default 30)")), ToolInput(tag="in_msa_dir", input_type=Directory(optional=True), prefix="--msaDir", doc=InputDocumentation(doc="directory containing the clustered references (MSA files) - required")), ToolInput(tag="in_num_part", input_type=Int(optional=True), prefix="--numPart", doc=InputDocumentation(doc="number of partitions in the LSH Ensemble (default 8)")), ToolInput(tag="in_sketch_size", input_type=Int(optional=True), prefix="--sketchSize", doc=InputDocumentation(doc="size of MinHash sketch (default 21)")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--windowSize", doc=InputDocumentation(doc="size of window to sketch graph traversals with (default 100)")), ToolInput(tag="in_index_dir", input_type=Directory(optional=True), prefix="--indexDir", doc=InputDocumentation(doc="directory for to write/read the GROOT index files")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="filename for log file (default 'groot.log')")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="number of processors to use (default 1)")), ToolInput(tag="in_profiling", input_type=Boolean(optional=True), prefix="--profiling", doc=InputDocumentation(doc="create the files needed to profile GROOT using the go tool pprof"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Groot_Index_V0_1_0().translate("wdl", allow_empty_container=True)

