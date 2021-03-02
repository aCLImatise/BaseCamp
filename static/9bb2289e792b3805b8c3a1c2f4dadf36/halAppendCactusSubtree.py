from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Halappendcactussubtree_V0_1_0 = CommandToolBuilder(tool="halAppendCactusSubtree", base_command=["halAppendCactusSubtree"], inputs=[ToolInput(tag="in_cache_bytes", input_type=Int(optional=True), prefix="--cacheBytes", doc=InputDocumentation(doc=":   maximum size in bytes of regular hdf5 cache [default =\n15728640]")), ToolInput(tag="in_cache_mdc", input_type=Int(optional=True), prefix="--cacheMDC", doc=InputDocumentation(doc=":     number of metadata slots in hdf5 cache [default = 113]")), ToolInput(tag="in_cacher_dc", input_type=Int(optional=True), prefix="--cacheRDC", doc=InputDocumentation(doc=":     number of regular slots in hdf5 cache.  should be a prime\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]")), ToolInput(tag="in_cache_w_zero", input_type=Int(optional=True), prefix="--cacheW0", doc=InputDocumentation(doc=":      w0 parameter fro hdf5 cache [default = 0.75]")), ToolInput(tag="in_chunk", input_type=Int(optional=True), prefix="--chunk", doc=InputDocumentation(doc=":        hdf5 chunk size [default = 1000]")), ToolInput(tag="in_deflate", input_type=Int(optional=True), prefix="--deflate", doc=InputDocumentation(doc=":      hdf5 compression factor [0:none - 9:max] [default = 2]")), ToolInput(tag="in_in_memory", input_type=Boolean(optional=True), prefix="--inMemory", doc=InputDocumentation(doc=":             load all data in memory (and disable hdf5 cache) [default =\n0]")), ToolInput(tag="in_out_groups", input_type=String(optional=True), prefix="--outgroups", doc=InputDocumentation(doc=":    comma-separated list of outgroup events which will be skipped\nby the conversion. [default = '']\n")), ToolInput(tag="in_cactus_dot_ctw_oh_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cactus_dot_fa_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_newick_tree", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_hal_path", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_hal_path", output_type=File(), selector=InputSelector(input_to_select="in_output_hal_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Halappendcactussubtree_V0_1_0().translate("wdl", allow_empty_container=True)

