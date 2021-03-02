from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Dimspy_Hdf5_Pls_To_Txt_V0_1_0 = CommandToolBuilder(tool="dimspy_hdf5_pls_to_txt", base_command=["dimspy", "hdf5-pls-to-txt"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file that contains a list of peaklist objects\nfrom one of the processing steps.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Directory to write to.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="Values on each line of the file are separated by this\ncharacter.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Hdf5_Pls_To_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

