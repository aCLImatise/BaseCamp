from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float

Anvi_Setup_Pfams_V0_1_0 = CommandToolBuilder(tool="anvi_setup_pfams", base_command=["anvi-setup-pfams"], inputs=[ToolInput(tag="in_pfam_data_dir", input_type=File(optional=True), prefix="--pfam-data-dir", doc=InputDocumentation(doc="The directory for Pfam data to be stored. If you leave\nit as is without specifying anything, the default\ndestination for the data directory will be used to set\nthings up. The advantage of it is that everyone will\nbe using a single data directory, but then you may\nneed superuser privileges to do it. Using this\nparameter you can choose the location of the data\ndirectory somewhere you like. However, when it is time\nto run Pfam, you will need to remember that path and\nprovide it to the program. (default: None)")), ToolInput(tag="in_reset", input_type=Boolean(optional=True), prefix="--reset", doc=InputDocumentation(doc="This program by default attempts to use previously\ndownloaded files in your Pfam data directory if there\nare any. If something is wrong for some reason you can\nuse this to tell anvi'o to remove everything, and\nstart over. (default: False)")), ToolInput(tag="in_pfam_version", input_type=Float(optional=True), prefix="--pfam-version", doc=InputDocumentation(doc="By default, the most current version available will be\ndownloaded. If you have specific tastes for a\ndifferent version, you can provide it here. For\nexample, `31.0`. Here are all possible versions:\nftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/\n(default: None)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Setup_Pfams_V0_1_0().translate("wdl")

