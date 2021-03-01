from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Novoutil_Genejunctions_V0_1_0 = CommandToolBuilder(tool="novoutil_genejunctions", base_command=["novoutil", "genejunctions"], inputs=[ToolInput(tag="in_max_read_default", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="max read length. Default 100.  This sets the size of junction\nrecords in trems of bp from each exon.\n")), ToolInput(tag="in_ref_gene_file", input_type=String(), position=0, doc=InputDocumentation(doc="is a refgene format file of genes and exon annotations for the genome."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Genejunctions_V0_1_0().translate("wdl", allow_empty_container=True)

