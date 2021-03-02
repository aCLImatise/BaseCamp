from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Svtk_Annotate_V0_1_0 = CommandToolBuilder(tool="svtk_annotate", base_command=["svtk", "annotate"], inputs=[ToolInput(tag="in_gen_code", input_type=String(optional=True), prefix="--gencode", doc=InputDocumentation(doc="Gencode gene annotations (GTF).")), ToolInput(tag="in_noncoding", input_type=String(optional=True), prefix="--noncoding", doc=InputDocumentation(doc="Noncoding elements (bed). Columns =\nchr,start,end,element_class,element_name\n")), ToolInput(tag="in_site_dot", input_type=String(), position=0, doc=InputDocumentation(doc="An SV is annotated with a new NONCODING INFO field containing all classes of")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Structural variants.")), ToolInput(tag="in_annotated_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="Annotated variants."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

