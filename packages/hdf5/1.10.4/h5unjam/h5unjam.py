from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

H5Unjam_V0_1_0 = CommandToolBuilder(tool="h5unjam", base_command=["h5unjam"], inputs=[ToolInput(tag="in_specifies_hdf_input", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specifies the HDF5 as input.  If the input HDF5 file\ncontains no user block, exit with an error message.")), ToolInput(tag="in_specifies_output_hdf_file", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Specifies output HDF5 file without a user block.\nIf not specified, the user block will be removed from the\ninput HDF5 file.")), ToolInput(tag="in_specifies_output_file_containing", input_type=File(optional=True), prefix="-u", doc=InputDocumentation(doc="Specifies the output file containing the data from the\nuser block.\nCannot be used with --delete option.")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="--delete", doc=InputDocumentation(doc="Remove the user block from the input HDF5 file. The content\nof the user block is discarded.\nCannot be used with the -u option.")), ToolInput(tag="in_prints_hdf_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Prints the HDF5 library version and exits."))], outputs=[ToolOutput(tag="out_specifies_output_file_containing", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specifies_output_file_containing", type_hint=File()), doc=OutputDocumentation(doc="Specifies the output file containing the data from the\nuser block.\nCannot be used with --delete option."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Unjam_V0_1_0().translate("wdl", allow_empty_container=True)

