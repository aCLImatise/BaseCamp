from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Gem_Indexer_Bwt_Dna_V0_1_0 = CommandToolBuilder(tool="gem_indexer_bwt_dna", base_command=["gem-indexer_bwt-dna"], inputs=[ToolInput(tag="in_mandatory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="(default=1)")), ToolInput(tag="in_keep_temporaries", input_type=Boolean(optional=True), prefix="--keep-temporaries", doc=InputDocumentation(doc="(default: deleted in the end)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(print license and exit)")), ToolInput(tag="in_gem_indexer_bwt_dna", input_type=String(), position=0, doc=InputDocumentation(doc="-i <input_file>                 (mandatory)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Indexer_Bwt_Dna_V0_1_0().translate("wdl")

