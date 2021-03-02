from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Guess_Baits_Py_V0_1_0 = CommandToolBuilder(tool="guess_baits.py", base_command=["guess_baits.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The inferred targets, in BED format.")), ToolInput(tag="in_coverage", input_type=File(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Filename to output average coverage depths in .cnn\nformat.")), ToolInput(tag="in_number_subprocesses_segment", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[CPU], --processes [CPU]\nNumber of subprocesses to segment in parallel. If\ngiven without an argument, use the maximum number of\navailable CPUs. [Default: use 1 process]")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="Potentially targeted genomic regions, e.g. all known\nexons in the reference genome, in BED format. Each of\nthese regions will be tested as a whole for\nenrichment. (Faster method)")), ToolInput(tag="in_access", input_type=String(optional=True), prefix="--access", doc=InputDocumentation(doc="Sequencing-accessible genomic regions (e.g. from\n'cnvkit.py access'), or known genic regions in the\nreference genome, in BED format. All bases will be\ntested for enrichment. (Slower method)")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="Minimum sequencing read depth to accept as captured.\n[Default: 5]")), ToolInput(tag="in_min_gap", input_type=Int(optional=True), prefix="--min-gap", doc=InputDocumentation(doc="Merge regions separated by gaps smaller than this.\n[Default: 25]")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum region length to accept as captured. [Default:\n50]\n")), ToolInput(tag="in_sample_bams", input_type=String(), position=0, doc=InputDocumentation(doc="Sample BAM file(s) to test for target coverage."))], outputs=[ToolOutput(tag="out_coverage", output_type=File(optional=True), selector=InputSelector(input_to_select="in_coverage", type_hint=File()), doc=OutputDocumentation(doc="Filename to output average coverage depths in .cnn\nformat."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guess_Baits_Py_V0_1_0().translate("wdl", allow_empty_container=True)

