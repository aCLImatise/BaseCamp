from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Tbprofiler_Gene_Profiler_Py_Profile_V0_1_0 = CommandToolBuilder(tool="tbprofiler_gene_profiler.py_profile", base_command=["tbprofiler_gene_profiler.py", "profile"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file (default: None)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Sample prefix for all results generated (default:\nNone)")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--suffix", doc=InputDocumentation(doc="Output file suffix (default: .results.json)")), ToolInput(tag="in_platform", input_type=String(optional=True), prefix="--platform", doc=InputDocumentation(doc="NGS Platform used to generate data (default: illumina)")), ToolInput(tag="in_caller", input_type=String(optional=True), prefix="--caller", doc=InputDocumentation(doc="Variant calling tool to use. (default: bcftools)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Mutation panel name (default: tbdb)")), ToolInput(tag="in_external_db", input_type=File(optional=True), prefix="--external_db", doc=InputDocumentation(doc="Path to db files prefix (overrides '--db' parameter)\n(default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Threads to use (default: 1)\n"))], outputs=[ToolOutput(tag="out_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suffix", type_hint=File()), doc=OutputDocumentation(doc="Output file suffix (default: .results.json)"))], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Gene_Profiler_Py_Profile_V0_1_0().translate("wdl")

