from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Halalignedextract_V0_1_0 = CommandToolBuilder(tool="halAlignedExtract", base_command=["halAlignedExtract"], inputs=[ToolInput(tag="in_aligned_file", input_type=File(optional=True), prefix="--alignedFile", doc=InputDocumentation(doc=":   path to bed file to write to [default = stdout]")), ToolInput(tag="in_cache_bytes", input_type=Int(optional=True), prefix="--cacheBytes", doc=InputDocumentation(doc=":    maximum size in bytes of regular hdf5 cache [default =\n15728640]")), ToolInput(tag="in_cache_mdc", input_type=Int(optional=True), prefix="--cacheMDC", doc=InputDocumentation(doc=":      number of metadata slots in hdf5 cache [default = 113]")), ToolInput(tag="in_cacher_dc", input_type=Int(optional=True), prefix="--cacheRDC", doc=InputDocumentation(doc=":      number of regular slots in hdf5 cache.  should be a prime\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]")), ToolInput(tag="in_cache_w_zero", input_type=Int(optional=True), prefix="--cacheW0", doc=InputDocumentation(doc=":       w0 parameter fro hdf5 cache [default = 0.75]")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc=":            extract the regions of the genome that are *unaligned* to\nthe parent. ie all intervals that are not returned with the\ndefault setting. [default = 0]")), ToolInput(tag="in_in_memory", input_type=Boolean(optional=True), prefix="--inMemory", doc=InputDocumentation(doc=":              load all data in memory (and disable hdf5 cache) [default =\n0]\n")), ToolInput(tag="in_hal_path", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Halalignedextract_V0_1_0().translate("wdl", allow_empty_container=True)

