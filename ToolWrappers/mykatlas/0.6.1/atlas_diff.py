from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean, String, Array

Atlas_Diff_V0_1_0 = CommandToolBuilder(tool="atlas_diff", base_command=["atlas", "diff"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="kmer length (default:21)")), ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc="tmp directory (default: /tmp/)")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep_tmp", doc=InputDocumentation(doc="Dont remove tmp files")), ToolInput(tag="in_skeleton_dir", input_type=Directory(optional=True), prefix="--skeleton_dir", doc=InputDocumentation(doc="directory for skeleton binaries")), ToolInput(tag="in_mc_cortex_three_one_path", input_type=Int(optional=True), prefix="--mccortex31_path", doc=InputDocumentation(doc="Path to mccortex31. Default mccortex31")), ToolInput(tag="in_expected_depth", input_type=String(optional=True), prefix="--expected_depth", doc=InputDocumentation(doc="expected depth")), ToolInput(tag="in_seq", input_type=Array(t=String(), optional=True), prefix="--seq", doc=InputDocumentation(doc="sequence files (fasta,fastq,bam)")), ToolInput(tag="in_ctx", input_type=String(optional=True), prefix="--ctx", doc=InputDocumentation(doc="cortex graph binary")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="do not output warnings to stderr")), ToolInput(tag="in_add", input_type=Boolean(optional=True), prefix="--add", doc=InputDocumentation(doc="after comparing, add the new sample to the graph")), ToolInput(tag="in_sample", input_type=String(), position=0, doc=InputDocumentation(doc="sample id")), ToolInput(tag="in_graph", input_type=String(), position=1, doc=InputDocumentation(doc="The graph to compare new sample against")), ToolInput(tag="in_threads", input_type=String(), position=0, doc=InputDocumentation(doc="-m MEMORY, --memory MEMORY"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Diff_V0_1_0().translate("wdl", allow_empty_container=True)

