from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Summarize_Miso_V0_1_0 = CommandToolBuilder(tool="summarize_miso", base_command=["summarize_miso"], inputs=[ToolInput(tag="in_summarize_samples", input_type=File(optional=True), prefix="--summarize-samples", doc=InputDocumentation(doc="Compute summary statistics of the given set of\nsamples. Expects a directory with MISO output and a\ndirectory to output summary file to.")), ToolInput(tag="in_summary_label", input_type=File(optional=True), prefix="--summary-label", doc=InputDocumentation(doc="Label for MISO summary file. If not given, uses\nbasename of MISO output directory.")), ToolInput(tag="in_use_compressed", input_type=File(optional=True), prefix="--use-compressed", doc=InputDocumentation(doc="Use compressed event IDs. Takes as input a\ngenes_to_filenames.shelve file produced by the\nindex_gff script.\n"))], outputs=[ToolOutput(tag="out_summarize_samples", output_type=File(optional=True), selector=InputSelector(input_to_select="in_summarize_samples", type_hint=File()), doc=OutputDocumentation(doc="Compute summary statistics of the given set of\nsamples. Expects a directory with MISO output and a\ndirectory to output summary file to.")), ToolOutput(tag="out_summary_label", output_type=File(optional=True), selector=InputSelector(input_to_select="in_summary_label", type_hint=File()), doc=OutputDocumentation(doc="Label for MISO summary file. If not given, uses\nbasename of MISO output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_Miso_V0_1_0().translate("wdl", allow_empty_container=True)

