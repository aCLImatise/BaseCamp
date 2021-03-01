from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Prophyle_Propagation_Makefile_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_propagation_makefile.py", base_command=["prophyle_propagation_makefile.py"], inputs=[ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Propagation_Makefile_Py_V0_1_0().translate("wdl", allow_empty_container=True)

