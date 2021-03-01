from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

H5Jam_V0_1_0 = CommandToolBuilder(tool="h5jam", base_command=["h5jam"], inputs=[ToolInput(tag="in_specifies_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specifies the input HDF5 file.")), ToolInput(tag="in_specifies_file_inserted", input_type=File(optional=True), prefix="-u", doc=InputDocumentation(doc="Specifies the file to be inserted into the user block.\nCan be any file format except an HDF5 format.")), ToolInput(tag="in_specifies_output_fileif", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Specifies the output HDF5 file.\nIf not specified, the user block will be concatenated in\nplace to the input HDF5 file.")), ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="Wipes out any existing user block before concatenating\nthe given user block.\nThe size of the new user block will be the larger of;\n- the size of existing user block in the input HDF5 file\n- the size of user block required by new input user file\n(size = 512 x 2N,  N is positive integer.)")), ToolInput(tag="in_prints_hdf_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Prints the HDF5 library version and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Jam_V0_1_0().translate("wdl", allow_empty_container=True)

