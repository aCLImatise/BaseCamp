from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Draw_Fusions_R_V0_1_0 = CommandToolBuilder(tool="draw_fusions.R", base_command=["draw_fusions.R"], inputs=[ToolInput(tag="in_pdf_height", input_type=Int(optional=True), prefix="--pdfHeight", doc=InputDocumentation(doc="")), ToolInput(tag="in_pdf_width", input_type=Int(optional=True), prefix="--pdfWidth", doc=InputDocumentation(doc="")), ToolInput(tag="in_render_three_d_effect", input_type=Int(optional=True), prefix="--render3dEffect", doc=InputDocumentation(doc="")), ToolInput(tag="in_print_exon_labels", input_type=String(optional=True), prefix="--printExonLabels", doc=InputDocumentation(doc="")), ToolInput(tag="in_squish_introns", input_type=String(optional=True), prefix="--squishIntrons", doc=InputDocumentation(doc="")), ToolInput(tag="in_protein_domains", input_type=Int(optional=True), prefix="--proteinDomains", doc=InputDocumentation(doc="")), ToolInput(tag="in_min_confidence_for_circo_splot", input_type=String(optional=True), prefix="--minConfidenceForCircosPlot", doc=InputDocumentation(doc="")), ToolInput(tag="in_cytoband_s", input_type=String(optional=True), prefix="--cytobands", doc=InputDocumentation(doc="")), ToolInput(tag="in_alignments", input_type=String(optional=True), prefix="--alignments", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="")), ToolInput(tag="in_fusions", input_type=String(optional=True), prefix="--fusions", doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/arriba:2.1.0--hd2e4403_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Fusions_R_V0_1_0().translate("wdl")

