from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportblast_V0_1_0 = CommandToolBuilder(tool="ktImportBLAST", base_command=["ktImportBLAST"], inputs=[ToolInput(tag="in_blast_output", input_type=String(), position=0, doc=InputDocumentation(doc="File containing BLAST results in tabular format ('Hit table\n(text)' when downloading from NCBI). If running BLAST locally,\nsubject IDs in the local database must contain accession\nnumbers, either bare or in the fourth field of the\npipe-separated ('gi|12345|xx|ABC123.1|') format. By default,\nseparate datasets will be created for each input (see [-c]).")), ToolInput(tag="in_magnitudes", input_type=String(), position=1, doc=InputDocumentation(doc="Optional file listing query IDs with magnitudes, separated by\ntabs. This can be used to account for read length or contig\ndepth to obtain a more accurate representation of abundance.\nBy default, query sequences without specified magnitudes will\nbe assigned a magnitude of 1. Magnitude files for assemblies\nin ACE format can be created with ktGetContigMagnitudes.")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart (if\nmultiple input files are present and [-c] is not specified).\nBy default, the basename of the file will be used.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportblast_V0_1_0().translate("wdl", allow_empty_container=True)

