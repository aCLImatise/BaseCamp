from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Cnvkit_Py_Diagram_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_diagram", base_command=["cnvkit.py", "diagram"], inputs=[ToolInput(tag="in_segment", input_type=String(optional=True), prefix="--segment", doc=InputDocumentation(doc="Segmentation calls (.cns), the output of the 'segment'\ncommand.")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Copy number change threshold to label genes. [Default:\n0.5]")), ToolInput(tag="in_min_probes", input_type=Int(optional=True), prefix="--min-probes", doc=InputDocumentation(doc="Minimum number of covered probes to label a gene.\n[Default: 3]")), ToolInput(tag="in_haploid_x_reference", input_type=Boolean(optional=True), prefix="--haploid-x-reference", doc=InputDocumentation(doc="Assume inputs were normalized to a male reference\n(i.e. female samples will have +1 log-CNR of chrX;\notherwise male samples would have -1 chrX).")), ToolInput(tag="in_sample_sex", input_type=String(optional=True), prefix="--sample-sex", doc=InputDocumentation(doc="Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed from X and Y coverage).")), ToolInput(tag="in_no_shift_xy", input_type=Boolean(optional=True), prefix="--no-shift-xy", doc=InputDocumentation(doc="Don't adjust the X and Y chromosomes according to\nsample sex.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output PDF file name.")), ToolInput(tag="in_title", input_type=File(optional=True), prefix="--title", doc=InputDocumentation(doc="Plot title. [Default: sample ID, from filename or -i]")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="Processed coverage data file (*.cnr), the output of\nthe 'fix' sub-command."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output PDF file name."))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Diagram_V0_1_0().translate("wdl")

