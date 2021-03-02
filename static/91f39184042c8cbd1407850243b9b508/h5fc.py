from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int, String

H5Fc_V0_1_0 = CommandToolBuilder(tool="h5fc", base_command=["h5fc"], inputs=[ToolInput(tag="in_echo", input_type=Boolean(optional=True), prefix="-echo", doc=InputDocumentation(doc="Show all the shell commands executed")), ToolInput(tag="in_prefix", input_type=Directory(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Prefix directory to find HDF5 lib/ and include/\nsubdirectories [default: /usr/local]")), ToolInput(tag="in_show", input_type=Boolean(optional=True), prefix="-show", doc=InputDocumentation(doc="Show the commands without executing them")), ToolInput(tag="in_show_config", input_type=Boolean(optional=True), prefix="-showconfig", doc=InputDocumentation(doc="Show the HDF5 library configuration summary")), ToolInput(tag="in_shlib", input_type=Boolean(optional=True), prefix="-shlib", doc=InputDocumentation(doc="Compile with shared HDF5 libraries [default for hdf5 built\nwithout static libraries]")), ToolInput(tag="in_no_shlib", input_type=Boolean(optional=True), prefix="-noshlib", doc=InputDocumentation(doc="Compile with static HDF5 libraries [default for hdf5 built\nwith static libraries]")), ToolInput(tag="in_hdf_five_fc", input_type=Int(), position=0, doc=InputDocumentation(doc="-  use a different Fortran 90 or 95 compiler")), ToolInput(tag="in_hdf_five_f_linker", input_type=Int(), position=1, doc=InputDocumentation(doc="-  use a different linker")), ToolInput(tag="in_variable", input_type=String(), position=0, doc=InputDocumentation(doc="Current value to be replaced"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Fc_V0_1_0().translate("wdl", allow_empty_container=True)

