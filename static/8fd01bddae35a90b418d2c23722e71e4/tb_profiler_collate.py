from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Boolean, Float

Tb_Profiler_Collate_V0_1_0 = CommandToolBuilder(tool="tb_profiler_collate", base_command=["tb-profiler", "collate"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Sample prefix (default: tbprofiler)")), ToolInput(tag="in_samples", input_type=File(optional=True), prefix="--samples", doc=InputDocumentation(doc="File with samples (one per line) (default: None)")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Storage directory (default: results)")), ToolInput(tag="in_full", input_type=File(optional=True), prefix="--full", doc=InputDocumentation(doc="Output mutations in main result file (default: False)")), ToolInput(tag="in_all_variants", input_type=Boolean(optional=True), prefix="--all_variants", doc=InputDocumentation(doc="Output all variants in variant matrix (default: False)")), ToolInput(tag="in_mark_missing", input_type=Boolean(optional=True), prefix="--mark_missing", doc=InputDocumentation(doc="An asteriks will be use to mark predictions which are\naffected by missing data at a drug resistance position\n(default: False)")), ToolInput(tag="in_reporting_af", input_type=Float(optional=True), prefix="--reporting_af", doc=InputDocumentation(doc="Minimum allele frequency to call variants (default:\n0.1)")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Full path to mutation database json file to use\n(default: tbdb)")), ToolInput(tag="in_external_db", input_type=File(optional=True), prefix="--external_db", doc=InputDocumentation(doc="Path to db files prefix (overrides '--db' parameter)\n(default: None)"))], outputs=[ToolOutput(tag="out_full", output_type=File(optional=True), selector=InputSelector(input_to_select="in_full", type_hint=File()), doc=OutputDocumentation(doc="Output mutations in main result file (default: False)"))], container="quay.io/biocontainers/tb-profiler:3.0.3--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Collate_V0_1_0().translate("wdl")

