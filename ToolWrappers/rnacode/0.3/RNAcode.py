from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rnacode_V0_1_0 = CommandToolBuilder(tool="RNAcode", base_command=["RNAcode"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file  (default: stdout)")), ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Format output as GTF")), ToolInput(tag="in_tabular", input_type=Boolean(optional=True), prefix="--tabular", doc=InputDocumentation(doc="Format output as tab delimited fields")), ToolInput(tag="in_best_only", input_type=Boolean(optional=True), prefix="--best-only", doc=InputDocumentation(doc="Show only best hit")), ToolInput(tag="in_best_region", input_type=Boolean(optional=True), prefix="--best-region", doc=InputDocumentation(doc="Show only best non-overlapping hits")), ToolInput(tag="in_stop_early", input_type=Boolean(optional=True), prefix="--stop-early", doc=InputDocumentation(doc="Don't calculate p-values for hits likely to be above cutoff")), ToolInput(tag="in_num_samples", input_type=Boolean(optional=True), prefix="--num-samples", doc=InputDocumentation(doc="Number of samples to calculate p-value (default: 100)")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="p-value cutoff (default: 1.0)")), ToolInput(tag="in_pars", input_type=Boolean(optional=True), prefix="--pars", doc=InputDocumentation(doc="Parameters as comma separated string (see README for details)")), ToolInput(tag="in_eps", input_type=Boolean(optional=True), prefix="--eps", doc=InputDocumentation(doc="Create colored plots in EPS format")), ToolInput(tag="in_eps_cut_off", input_type=Boolean(optional=True), prefix="--eps-cutoff", doc=InputDocumentation(doc="Create plots only if p better than this cutoff (default: 0.05)")), ToolInput(tag="in_eps_dir", input_type=Boolean(optional=True), prefix="--eps-dir", doc=InputDocumentation(doc="Directory to put eps-files (default: eps)"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file  (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnacode_V0_1_0().translate("wdl", allow_empty_container=True)

