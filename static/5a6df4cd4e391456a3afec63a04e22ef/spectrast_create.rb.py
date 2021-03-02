from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Float, Int

Spectrast_Create_Rb_V0_1_0 = CommandToolBuilder(tool="spectrast_create.rb", base_command=["spectrast_create.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_spectrum_files", input_type=String(optional=True), prefix="--spectrum-files", doc=InputDocumentation(doc="Paths to raw spectrum files. These should be provided in a comma separated list")), ToolInput(tag="in_binary_output", input_type=Boolean(optional=True), prefix="--binary-output", doc=InputDocumentation(doc="Produce spectral libraries in binary format rather than ASCII [false]")), ToolInput(tag="in_predicate", input_type=String(optional=True), prefix="--predicate", doc=InputDocumentation(doc="Keep only spectra satifying predicate pred. Should be a C-style predicate")), ToolInput(tag="in_p_thresh", input_type=Float(optional=True), prefix="--p-thresh", doc=InputDocumentation(doc="Probability threshold below which spectra are discarded [0.99]")), ToolInput(tag="in_instrument_acquisition", input_type=String(optional=True), prefix="--instrument-acquisition", doc=InputDocumentation(doc="Set the instrument and acquisition settings of the spectra (in case not specified in data files).\nExamples: CID, ETD, CID-QTOF, HCD. The latter two are treated as high-mass accuracy spectra. [CID]\n")), ToolInput(tag="in_file_one_dot_pep_dot_xml", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectrast_Create_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

