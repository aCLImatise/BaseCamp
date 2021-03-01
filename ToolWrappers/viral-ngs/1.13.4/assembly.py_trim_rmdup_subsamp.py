from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Assembly_Py_Trim_Rmdup_Subsamp_V0_1_0 = CommandToolBuilder(tool="assembly.py_trim_rmdup_subsamp", base_command=["assembly.py", "trim_rmdup_subsamp"], inputs=[ToolInput(tag="in_n_reads", input_type=Int(optional=True), prefix="--n_reads", doc=InputDocumentation(doc="Subsample reads to no more than this many individual\nreads. Note that paired reads are given priority, and\nunpaired reads are included to reach the count if\nthere are too few paired reads to reach n_reads.\n(default 100000)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input reads, unaligned BAM format.")), ToolInput(tag="in_clip_db", input_type=String(), position=1, doc=InputDocumentation(doc="Trimmomatic clip DB.")), ToolInput(tag="in_out_bam", input_type=String(), position=2, doc=InputDocumentation(doc="Output reads, unaligned BAM format (currently, read\ngroups and other header information are destroyed in\nthis process)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Py_Trim_Rmdup_Subsamp_V0_1_0().translate("wdl", allow_empty_container=True)

