from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Int

Humann2_Strain_Profiler_V0_1_0 = CommandToolBuilder(tool="humann2_strain_profiler", base_command=["humann2_strain_profiler"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Original output table (tsv or biom format); default=[TSV/STDIN]")), ToolInput(tag="in_critical_mean", input_type=Float(optional=True), prefix="--critical_mean", doc=InputDocumentation(doc="Default mean non-zero gene abundance for inclusion; default=10.0")), ToolInput(tag="in_critical_count", input_type=Int(optional=True), prefix="--critical_count", doc=InputDocumentation(doc="Default non-zero number of genes for inclusion; default=500")), ToolInput(tag="in_pinterval_pinterval_pintervalonly", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="PINTERVAL, --pinterval PINTERVAL PINTERVAL\nOnly genes with prevalence in this interval are allowed; default=[1e-10, 1]")), ToolInput(tag="in_critical_samples", input_type=Int(optional=True), prefix="--critical_samples", doc=InputDocumentation(doc="Threshold number of samples having strain; default=2")), ToolInput(tag="in_limit", input_type=String(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit output to species matching a particular pattern, e.g. 'Streptococcus'; default=OFF\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Strain_Profiler_V0_1_0().translate("wdl", allow_empty_container=True)

