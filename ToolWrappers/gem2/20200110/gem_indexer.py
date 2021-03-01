from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Gem_Indexer_V0_1_0 = CommandToolBuilder(tool="gem_indexer", base_command=["gem-indexer"], inputs=[ToolInput(tag="in_mandatory", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_strip_unknown_bases_threshold", input_type=Boolean(optional=True), prefix="--strip-unknown-bases-threshold", doc=InputDocumentation(doc="'disable'|<integer>\n(default=50)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="(for the BWT generator,\ndefault=1)")), ToolInput(tag="in_sampling_rate", input_type=Int(optional=True), prefix="--sampling-rate", doc=InputDocumentation(doc="(default=32 -- 16/32/64/128 ok)")), ToolInput(tag="in_keep_temporaries", input_type=Boolean(optional=True), prefix="--keep-temporaries", doc=InputDocumentation(doc="(default: deleted in the end)")), ToolInput(tag="in_mm_tmp_prefix", input_type=String(optional=True), prefix="--mm-tmp-prefix", doc=InputDocumentation(doc="(default='/tmp/mm_new-')")), ToolInput(tag="in_check_index", input_type=Boolean(optional=True), prefix="--check-index", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(print license and exit)")), ToolInput(tag="in_gem_indexer", input_type=String(), position=0, doc=InputDocumentation(doc="-i <input_file>                 (mandatory)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Indexer_V0_1_0().translate("wdl")

