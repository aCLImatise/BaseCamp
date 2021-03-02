from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rust_Gdb_V0_1_0 = CommandToolBuilder(tool="rust_gdb", base_command=["rust-gdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rust_Gdb_V0_1_0().translate("wdl", allow_empty_container=True)

