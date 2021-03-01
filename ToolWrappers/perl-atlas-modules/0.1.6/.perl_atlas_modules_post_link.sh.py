from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Perl_Atlas_Modules_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".perl_atlas_modules_post_link.sh", base_command=[".perl-atlas-modules-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/perl-atlas-modules:0.1.6--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Perl_Atlas_Modules_Post_Link_Sh_V0_1_0().translate("wdl")

