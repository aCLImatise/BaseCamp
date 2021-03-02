from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Gem_Indexer_Generate_V0_1_0 = CommandToolBuilder(tool="gem_indexer_generate", base_command=["gem-indexer_generate"], inputs=[ToolInput(tag="in_mandatory", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_sampling_rate", input_type=Int(optional=True), prefix="--sampling-rate", doc=InputDocumentation(doc="(default=32,\n16/32/64/128 ok)")), ToolInput(tag="in_index_type", input_type=Boolean(optional=True), prefix="--index-type", doc=InputDocumentation(doc="'fmi-dna'|'fmi-dna-compact'|'fmi-general'\n(default='fmi-dna')")), ToolInput(tag="in_bwt_file", input_type=File(optional=True), prefix="--bwt-file", doc=InputDocumentation(doc="(default: BWT computed in RAM)")), ToolInput(tag="in_mm_tmp_prefix", input_type=String(optional=True), prefix="--mm-tmp-prefix", doc=InputDocumentation(doc="(default='/tmp/mm_new-')")), ToolInput(tag="in_check_index", input_type=Boolean(optional=True), prefix="--check-index", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(print license and exit)")), ToolInput(tag="in_gem_indexer_generate", input_type=String(), position=0, doc=InputDocumentation(doc="-i <input_file>                 (mandatory)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Indexer_Generate_V0_1_0().translate("wdl")

