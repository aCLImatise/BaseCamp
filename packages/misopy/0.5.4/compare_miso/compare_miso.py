from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File

Compare_Miso_V0_1_0 = CommandToolBuilder(tool="compare_miso", base_command=["compare_miso"], inputs=[ToolInput(tag="in_compare_samples", input_type=Directory(optional=True), prefix="--compare-samples", doc=InputDocumentation(doc="Compute comparison statistics between the two given\nsamples. Expects three directories: the first is\nsample1's MISO output, the second is sample2's MISO\noutput, and the third is the directory where results\nof the sample comparison will be outputted.")), ToolInput(tag="in_comparison_labels", input_type=Int(optional=True), prefix="--comparison-labels", doc=InputDocumentation(doc="Use these labels for the sample comparison made by\n--compare-samples. Takes two arguments: the label for\nsample 1 and the label for sample 2, where sample 1\nand sample 2 correspond to the order of samples given\nto --compare-samples.")), ToolInput(tag="in_use_compressed", input_type=File(optional=True), prefix="--use-compressed", doc=InputDocumentation(doc="Use compressed event IDs. Takes as input a\ngenes_to_filenames.shelve file produced by the\nindex_gff script.\n"))], outputs=[ToolOutput(tag="out_compare_samples", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_compare_samples", type_hint=File()), doc=OutputDocumentation(doc="Compute comparison statistics between the two given\nsamples. Expects three directories: the first is\nsample1's MISO output, the second is sample2's MISO\noutput, and the third is the directory where results\nof the sample comparison will be outputted."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Miso_V0_1_0().translate("wdl", allow_empty_container=True)

