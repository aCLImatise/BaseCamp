from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sp_Complement_Annotations_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_complement_annotations.pl", base_command=["agat_sp_complement_annotations.pl"], inputs=[ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="Input GTF/GFF file used as reference.")), ToolInput(tag="in_add", input_type=File(optional=True), prefix="--add", doc=InputDocumentation(doc="Annotation(s) file you would like to use to complement the\nreference annotation. You can specify as much file you want like\nso: -a addfile1 -a addfile2 -a addfile3 /!\ The order you\nprovide these files matter. Once the reference file has been\ncomplemented by file1, this new annotation becomes the new\nreference that will be complemented by file2 etc. /!\ The result\nwith -a addfile1 -a addfile2 will differ to the result from -a\naddfile2 -a addfile1. So, be aware of what you want if you use\nseveral addfiles.")), ToolInput(tag="in_size_min", input_type=Int(optional=True), prefix="--size_min", doc=InputDocumentation(doc="Option to keep the non-overlping gene only if the CDS size (in\nnucleotide) is over the minimum size defined. Default = 0 that\nmeans all of them are kept.")), ToolInput(tag="in_outfile", input_type=Int(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output gff3 containing the reference annotation with all the\nnon-overlapping newly added genes from addfiles.gff.")), ToolInput(tag="in_agat_sp_complement_annotations_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Complement_Annotations_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

