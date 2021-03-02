from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Stride_Fmwalk_V0_1_0 = CommandToolBuilder(tool="stride_fmwalk", base_command=["stride", "fmwalk"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="use PREFIX for the names of the index files (default: prefix of the input file)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="write the corrected reads to FILE (default: READSFILE.ec.fa)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads for the computation (default: 1)")), ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="specify the walking algorithm. STR must be hybrid (merge and kmerize) or merge. (default: hybrid)")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="The length of the kmer to use. (default: 31)")), ToolInput(tag="in_km_er_threshold", input_type=Int(optional=True), prefix="--kmer-threshold", doc=InputDocumentation(doc="Attempt to correct kmers that are seen less than N times. (default: 3)")), ToolInput(tag="in_max_leaves", input_type=Int(optional=True), prefix="--max-leaves", doc=InputDocumentation(doc="Number of maximum leaves in the search tree (default: 32)")), ToolInput(tag="in_max_insert_size", input_type=Int(optional=True), prefix="--max-insertsize", doc=InputDocumentation(doc="the maximum insert size (i.e. search depth) (deault: 400)")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="the min overlap (default: 81)")), ToolInput(tag="in_max_overlap", input_type=Int(optional=True), prefix="--max-overlap", doc=InputDocumentation(doc="the max overlap (default: avg read length*0.9)")), ToolInput(tag="in_stride", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fm_index_walk", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stride_Fmwalk_V0_1_0().translate("wdl", allow_empty_container=True)

