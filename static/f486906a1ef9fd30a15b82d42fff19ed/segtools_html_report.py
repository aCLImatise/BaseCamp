from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Segtools_Html_Report_V0_1_0 = CommandToolBuilder(tool="segtools_html_report", base_command=["segtools-html-report"], inputs=[ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="Overwrite any existing output files.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_mnemonic_file", input_type=File(optional=True), prefix="--mnemonic-file", doc=InputDocumentation(doc="If specified, this mnemonic mapping will be included\nin the report (this should be the same mnemonic file\nused by the individual modules).")), ToolInput(tag="in_layered_bed", input_type=File(optional=True), prefix="--layered-bed", doc=InputDocumentation(doc="If specified, this layered BED file will be linked\ninto the the HTML document (assumed to be the same\ndata as in SEGMENTATION)")), ToolInput(tag="in_big_bed", input_type=File(optional=True), prefix="--big-bed", doc=InputDocumentation(doc="If specified, this bigBed file will be linked into the\nthe HTML document and a UCSC genome brower link will\nbe generated for it (assumed to be the same data as in\nSEGMENTATION)")), ToolInput(tag="in_results_dir", input_type=Directory(optional=True), prefix="--results-dir", doc=InputDocumentation(doc="This should be the directory containing all the module\noutput directories (`ls` should return things like\n'length_distribution/', etc) [default: .]")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="HTML report file (must be in current directory or the\nlinks will break [default: index.html]\n")), ToolInput(tag="in_segmentation", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_results_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_results_dir", type_hint=File()), doc=OutputDocumentation(doc="This should be the directory containing all the module\noutput directories (`ls` should return things like\n'length_distribution/', etc) [default: .]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Html_Report_V0_1_0().translate("wdl", allow_empty_container=True)

