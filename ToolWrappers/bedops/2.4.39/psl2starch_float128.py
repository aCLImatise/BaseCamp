from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Psl2Starch_Float128_V0_1_0 = CommandToolBuilder(tool="psl2starch_float128", base_command=["psl2starch-float128"], inputs=[ToolInput(tag="in_keep_header", input_type=Boolean(optional=True), prefix="--keep-header", doc=InputDocumentation(doc="(-k)\nPreserve header section as pseudo-BED elements (requires --headered)")), ToolInput(tag="in_split", input_type=Boolean(optional=True), prefix="--split", doc=InputDocumentation(doc="(-s)\nSplit record into multiple BED elements, based on tStarts field value")), ToolInput(tag="in_do_not_sort", input_type=Boolean(optional=True), prefix="--do-not-sort", doc=InputDocumentation(doc="(-d)\nDo not sort BED output with sort-bed (not compatible with --output=starch)")), ToolInput(tag="in_max_mem", input_type=Int(optional=True), prefix="--max-mem", doc=InputDocumentation(doc="(-m <val>)\nSets aside <value> memory for sorting BED output. For example, <value> can\nbe 8G, 8000M or 8000000000 to specify 8 GB of memory (default is 2G)")), ToolInput(tag="in_sort_tmpdir", input_type=Int(optional=True), prefix="--sort-tmpdir", doc=InputDocumentation(doc="(-r <dir>)\nOptionally sets [dir] as temporary directory for sort data, when used in\nconjunction with --max-mem=[value], instead of the host's operating system\ndefault temporary directory")), ToolInput(tag="in_starch_bzip_two", input_type=Boolean(optional=True), prefix="--starch-bzip2", doc=InputDocumentation(doc="(-z)\nUsed with --output=starch, the compressed output explicitly applies the bzip2\nalgorithm to compress intermediate data (default is bzip2)")), ToolInput(tag="in_starch_gzip", input_type=Boolean(optional=True), prefix="--starch-gzip", doc=InputDocumentation(doc="(-g)\nUsed with --output=starch, the compressed output applies gzip compression on\nintermediate data")), ToolInput(tag="in_starch_note", input_type=Boolean(optional=True), prefix="--starch-note", doc=InputDocumentation(doc="='xyz...' (-e 'xyz...')\nUsed with --output=starch, this adds a note to the Starch archive metadata"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psl2Starch_Float128_V0_1_0().translate("wdl", allow_empty_container=True)

