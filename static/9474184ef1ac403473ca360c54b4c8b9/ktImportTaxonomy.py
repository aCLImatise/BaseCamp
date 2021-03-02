from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimporttaxonomy_V0_1_0 = CommandToolBuilder(tool="ktImportTaxonomy", base_command=["ktImportTaxonomy"], inputs=[ToolInput(tag="in_taxonomy", input_type=String(), position=0, doc=InputDocumentation(doc="Tab-delimited file with taxonomy IDs and (optionally) query\nIDs, magnitudes and scores. By default, query IDs, taxonomy IDs\nand scores will be taken from columns 1, 2 and 3, respectively\n(see -q, -t, -s, and -m). Lines beginning with '#' will be\nignored. By default, separate datasets will be created for each\ninput (see [-c]).")), ToolInput(tag="in_magnitudes", input_type=String(), position=1, doc=InputDocumentation(doc="Optional file listing query IDs with magnitudes, separated by\ntabs. This can be used to account for read length or contig\ndepth to obtain a more accurate representation of abundance. By\ndefault, query sequences without specified magnitudes will be\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\nformat can be created with ktGetContigMagnitudes.")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified). By\ndefault, the basename of the file will be used.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimporttaxonomy_V0_1_0().translate("wdl", allow_empty_container=True)

