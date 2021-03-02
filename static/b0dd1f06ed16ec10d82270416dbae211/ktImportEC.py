from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportec_V0_1_0 = CommandToolBuilder(tool="ktImportEC", base_command=["ktImportEC"], inputs=[ToolInput(tag="in_ec_numbers", input_type=String(), position=0, doc=InputDocumentation(doc="Tab-delimited files with EC numbers and (optionally) query IDs,\nmagnitudes and scores. By default, query IDs, EC numbers and\nscores will be taken from columns 1, 2 and 3, respectively (see\n-q, -e, -s, and -m). By default, separate datasets will be\ncreated for each input (see [-c]).")), ToolInput(tag="in_magnitudes", input_type=String(), position=1, doc=InputDocumentation(doc="Optional file listing query IDs with magnitudes, separated by\ntabs. This can be used to account for read length or contig\ndepth to obtain a more accurate representation of abundance. By\ndefault, query sequences without specified magnitudes will be\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\nformat can be created with ktGetContigMagnitudes.")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified). By\ndefault, the basename of the file will be used.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportec_V0_1_0().translate("wdl", allow_empty_container=True)

