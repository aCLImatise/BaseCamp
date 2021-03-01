from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimporthits_V0_1_0 = CommandToolBuilder(tool="ktImportHits", base_command=["ktImportHits"], inputs=[ToolInput(tag="in_hits", input_type=String(), position=0, doc=InputDocumentation(doc="Tabular file whose fields are [query, subject, score]. Subject\nmust be an accession or contain one in the fourth field of pipe\nnotation (e.g. 'gi|12345|xx|ABC123.1|'. The subject and score\ncan be omitted to include a query that has no hits, which will\nbe assigned a taxonomy ID of -1. By default, separate datasets\nwill be created for each input (see [-c]).")), ToolInput(tag="in_magnitudes", input_type=String(), position=1, doc=InputDocumentation(doc="Optional file listing query IDs with magnitudes, separated by\ntabs. This can be used to account for read length or contig\ndepth to obtain a more accurate representation of abundance. By\ndefault, query sequences without specified magnitudes will be\nassigned a magnitude of 1. Magnitude files for assemblies in ACE\nformat can be created with ktGetContigMagnitudes.")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified). By\ndefault, the basename of the file will be used.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimporthits_V0_1_0().translate("wdl", allow_empty_container=True)

