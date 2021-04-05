from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Tb_Profiler_Lineage_V0_1_0 = CommandToolBuilder(tool="tb_profiler_lineage", base_command=["tb-profiler", "lineage"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file. Make sure it has been generated using the\nH37Rv genome (GCA_000195955.2) (default: None)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Sample prefix (default: tbprofiler)")), ToolInput(tag="in_out_fmt", input_type=String(optional=True), prefix="--outfmt", doc=InputDocumentation(doc="Output format (default: json)")), ToolInput(tag="in_snps", input_type=Boolean(optional=True), prefix="--snps", doc=InputDocumentation(doc="Sample prefix (default: False)")), ToolInput(tag="in_caller", input_type=String(optional=True), prefix="--caller", doc=InputDocumentation(doc="Variant caller (default: bcftools)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Mutation panel name (default: tbdb)")), ToolInput(tag="in_external_db", input_type=File(optional=True), prefix="--external_db", doc=InputDocumentation(doc="Path to db files prefix (overrides '--db' parameter)\n(default: None)"))], outputs=[], container="quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Lineage_V0_1_0().translate("wdl")

