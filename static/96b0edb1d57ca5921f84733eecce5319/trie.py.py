from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trie_Py_V0_1_0 = CommandToolBuilder(tool="trie.py", base_command=["trie.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trie_Py_V0_1_0().translate("wdl", allow_empty_container=True)

